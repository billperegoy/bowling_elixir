defmodule BowlingElixir do
  def map_to_frames([]) do
    []
  end

  def map_to_frames([10 | tail]) do
    [[10] | map_to_frames(tail)]
  end

  def map_to_frames([a, b  | tail]) do
    [[a, b] | map_to_frames(tail)]
  end

  def score_frames(frame_date) do
    [0, 0, 0]
  end

  def total_score(frame_scores) do
    Enum.reduce(frame_scores, 0, &(&1 + &2))
  end

  def score(roll_data) do
    map_to_frames(roll_data) 
      |> score_frames
      |> total_score
  end
end
