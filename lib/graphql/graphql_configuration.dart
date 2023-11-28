
import 'package:graphql_flutter/graphql_flutter.dart';

const String url = "http://10.0.2.2:4000/";

final GraphQLClient client = GraphQLClient(
    link: HttpLink(url),
    cache: GraphQLCache(store: InMemoryStore()),
);