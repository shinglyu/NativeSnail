from sklearn.base import BaseEstimator

class TfEstimator(BaseEstimator):
    def __init__(self):
        self.params = {}

    def get_params(self, deep=True):
        # TODO: return the params
        return self.params

    def set_params(self, **kwargs):
        # TODO: set the params
        return self

    def score(self, X, y):
        # TODO: run tf and return the accuracy
        return 1

    def clone(self):
        return TfEstimator()

    def fit(self, X, y):
        return self
