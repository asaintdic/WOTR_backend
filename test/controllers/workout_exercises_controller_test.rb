require 'test_helper'

class WorkoutExercisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_exercise = workout_exercises(:one)
  end

  test "should get index" do
    get workout_exercises_url, as: :json
    assert_response :success
  end

  test "should create workout_exercise" do
    assert_difference('WorkoutExercise.count') do
      post workout_exercises_url, params: { workout_exercise: { exercise_id: @workout_exercise.exercise_id, workout_id: @workout_exercise.workout_id } }, as: :json
    end

    assert_response 201
  end

  test "should show workout_exercise" do
    get workout_exercise_url(@workout_exercise), as: :json
    assert_response :success
  end

  test "should update workout_exercise" do
    patch workout_exercise_url(@workout_exercise), params: { workout_exercise: { exercise_id: @workout_exercise.exercise_id, workout_id: @workout_exercise.workout_id } }, as: :json
    assert_response 200
  end

  test "should destroy workout_exercise" do
    assert_difference('WorkoutExercise.count', -1) do
      delete workout_exercise_url(@workout_exercise), as: :json
    end

    assert_response 204
  end
end
