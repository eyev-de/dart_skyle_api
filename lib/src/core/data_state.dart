//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

abstract class DataState<T> {
  final T? data;
  final String? error;
  final double? progress;

  const DataState({this.data, this.error, this.progress});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String error) : super(error: error);
}

class DataLoading<T> extends DataState<T> {
  const DataLoading(double progress) : super(progress: progress);
}
