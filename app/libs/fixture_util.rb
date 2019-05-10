class FixtureUtil
  class << self
    # ActiveRecord から適当なレコードを引く
    # noinspection RubyUnnecessaryReturnStatement
    def find_randomly_with(klass)
      ids = klass.ids
      return nil if ids.empty?
      index = Random.rand(0...ids.size)
      return klass.find(ids[index])
    end
  end
end
