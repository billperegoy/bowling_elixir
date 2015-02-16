defmodule BowlingElixirTest do
  use ExUnit.Case

  test "get all empty frames" do
    rolls = [0,0, 0,0, 0,0]
    frame_data = BowlingElixir.map_to_frames(rolls)
    assert frame_data == [[0,0], [0,0], [0,0]]
  end

  test "get prefect game frames" do
    rolls = [10, 10, 10, 10, 10]
    frame_data = BowlingElixir.map_to_frames(rolls)
    assert frame_data == [[10], [10], [10], [10], [10]]
  end

  test "total_scores sums properly" do
    frame_scores = [1, 2, 3, 10]
    score = BowlingElixir.total_score(frame_scores)
    assert score == 16
  end

  test "score zero game" do
    rolls = [0,0, 0,0, 0,0]
    score = BowlingElixir.score(rolls)
    assert score == 0
  end

  test "score perfect game" do
    rolls = [10, 10, 10, 10, 10]
    score = BowlingElixir.score(rolls)
    assert score == 90
  end
end
