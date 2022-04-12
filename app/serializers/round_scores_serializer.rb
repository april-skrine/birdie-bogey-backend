class RoundScoresSerializer < ActiveModel::Serializer
  attributes :id, :course, :total_strokes, :total_par, :total_score, :date
end
