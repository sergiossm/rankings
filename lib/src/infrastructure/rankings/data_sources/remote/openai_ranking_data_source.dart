import 'dart:convert';

import 'package:openai_dart/openai_dart.dart';
import 'package:rankings/src/infrastructure/rankings/data_sources/remote/i_ranking_remote_data_source.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranked_item_dto.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranking_question_dto.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranking_result_dto.dart';

/// Data source for interacting with OpenAI API to generate rankings
class OpenAIRankingDataSource implements IRankingRemoteDataSource {
  OpenAIRankingDataSource({
    required OpenAIClient openAIClient,
    required ChatCompletionModels modelName,
  }) : _client = openAIClient,
       _modelName = modelName;

  final OpenAIClient _client;
  final ChatCompletionModels _modelName;

  /// Generate a ranking result for a given question using OpenAI
  @override
  Future<RankingResultDto?> generateRanking(RankingQuestionDto question) async {
    // Create the system prompt for the AI
    const systemPrompt = '''
You are a helpful assistant that generates a ranking of items based on a given question.
The ranking should be a list of items with a rank, title, and description.

For each item, provide a title, description, and rank.
The rank should be an integer between 1 and 10, where 1 is the highest rank and 10 is the lowest rank.

The title should be a short title for the item.
The description should be a brief description of the item.

Be careful to only include items that are relevant to the question, that actually exist, and that the rank is between 1 and 10.

--

For context: You are developing a mobile app that, given a user question, generates a ranking of items based on the question -eg. "What are the best places to visit in the world?"
''';

    // Create the user prompt from the question
    final userPrompt = question.questionText;

    // Make the API call to OpenAI
    final response = await _client.createChatCompletion(
      request: CreateChatCompletionRequest(
        model: ChatCompletionModel.model(_modelName),
        messages: [
          const ChatCompletionMessage.system(content: systemPrompt),
          ChatCompletionMessage.user(
            content: ChatCompletionUserMessageContent.string(userPrompt),
          ),
        ],
        responseFormat: const ResponseFormat.jsonSchema(
          jsonSchema: JsonSchemaObject(
            name: 'RankingResponse',
            description:
                'A ranked list of items with a brief explanation of why each item is ranked where',
            strict: true,
            schema: {
              'type': 'object',
              'properties': {
                'items': {
                  'type': 'array',
                  'items': {
                    'type': 'object',
                    'properties': {
                      'id': {'type': 'string'},
                      'rank': {'type': 'integer'},
                      'title': {'type': 'string'},
                      'description': {'type': 'string'},
                    },
                    'required': ['id', 'rank', 'title', 'description'],
                    'additionalProperties': false,
                  },
                },
                'explanation': {'type': 'string'},
              },
              'additionalProperties': false,
              'required': ['items', 'explanation'],
            },
          ),
        ),
      ),
    );

    // Extract the content from the response
    final content = response.choices.first.message.content;
    if (content == null) {
      return null;
    }
    // Parse the JSON response
    final jsonResponse = jsonDecode(content) as Map<String, dynamic>;

    // Extract items from the response
    final itemsJson = jsonResponse['items'] as List<dynamic>;
    final items =
        itemsJson.map((itemJson) {
          return RankedItemDto.fromJson(itemJson as Map<String, dynamic>);
        }).toList();

    // Extract explanation if available
    final explanation = jsonResponse['explanation'] as String?;

    // Create and return the ranking result
    return RankingResultDto(
      id: question.id,
      question: question,
      items: items,
      createdAt: DateTime.now(),
      explanation: explanation,
    );
  }
}
