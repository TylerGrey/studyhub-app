//import 'dart:developer';
//
//import 'package:flutter/material.dart';
//import 'package:graphql_flutter/graphql_flutter.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    final HttpLink httpLink = HttpLink(
//      uri: 'https://api.github.com/graphql',
//    );
//
//    final AuthLink authLink = AuthLink(
//      getToken: () async => 'Bearer 2dac9491780fef9fad6f65f7d1d720a4c7c1ddb6',
//      // OR
//      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
//    );
//
//    final Link link = authLink.concat(httpLink);
//
//    ValueNotifier<GraphQLClient> client = ValueNotifier(
//      GraphQLClient(
//        cache: InMemoryCache(),
//        link: link,
//      ),
//    );
//
//    String readRepositories = """
//      query ReadRepositories(\$nRepositories: Int!) {
//        viewer {
//          repositories(last: \$nRepositories) {
//            nodes {
//              id
//              name
//              viewerHasStarred
//            }
//          }
//        }
//      }
//    """;
//
//    return GraphQLProvider(
//      client: client,
//      child: CacheProvider(
//        child: MaterialApp(
//          title: 'Flutter Demo',
//          theme: ThemeData(
//            primarySwatch: Colors.blue,
//          ),
//          home: Query(
//            options: QueryOptions(
//              document: readRepositories,
//              // this is the query string you just created
//              variables: {
//                'nRepositories': 50,
//              },
//              pollInterval: 10,
//            ),
//            // Just like in apollo refetch() could be used to manually trigger a refetch
//            // while fetchMore() can be used for pagination purpose
//            builder: (QueryResult result,
//                {VoidCallback refetch, FetchMore fetchMore}) {
//              if (result.errors != null) {
//                return Text(result.errors.toString());
//              }
//
//              if (result.loading) {
//                return Text('Loading');
//              }
//
//              // it can be either Map or List
//              List repositories =
//              result.data['viewer']['repositories']['nodes'];
//              return ListView.builder(
//                  itemCount: repositories.length,
//                  itemBuilder: (context, index) {
//                    final repository = repositories[index];
//
//                    return Text(repository['name']);
//                  });
//            },
//          ),
//        ),
//      ),
//    );
//  }
//}
