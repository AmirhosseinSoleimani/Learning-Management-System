
abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs{
  // share variables and functions that will be used through any view model.

}

abstract class BaseViewModelInputs{
  void start(); // will be called wile init of view model
  void dispose(); // will be called when viewModel dies.
}

abstract class BaseViewModelOutputs{

}