class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :done, :time, :estimated
end
