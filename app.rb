class Application
  def call(env)
    [200, {}, ["hello"]]
  end
end