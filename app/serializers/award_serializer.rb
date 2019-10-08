class AwardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :competition, :year, :award
end
