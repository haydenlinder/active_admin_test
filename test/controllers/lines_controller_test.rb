require 'test_helper'

class LinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line = lines(:one)
  end

  test "should get index" do
    get lines_url
    assert_response :success
  end

  test "should get new" do
    get new_line_url
    assert_response :success
  end

  test "should create line" do
    assert_difference('Line.count') do
      post lines_url, params: { line: { a: @line.a, b: @line.b, c: @line.c, d: @line.d, e: @line.e, f: @line.f, g: @line.g, h: @line.h, i: @line.i, j: @line.j, k: @line.k, l: @line.l, m: @line.m, n: @line.n, o: @line.o, p: @line.p, q: @line.q, r: @line.r, s: @line.s, t: @line.t, u: @line.u, v: @line.v, w: @line.w, x: @line.x, y: @line.y, z: @line.z } }
    end

    assert_redirected_to line_url(Line.last)
  end

  test "should show line" do
    get line_url(@line)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_url(@line)
    assert_response :success
  end

  test "should update line" do
    patch line_url(@line), params: { line: { a: @line.a, b: @line.b, c: @line.c, d: @line.d, e: @line.e, f: @line.f, g: @line.g, h: @line.h, i: @line.i, j: @line.j, k: @line.k, l: @line.l, m: @line.m, n: @line.n, o: @line.o, p: @line.p, q: @line.q, r: @line.r, s: @line.s, t: @line.t, u: @line.u, v: @line.v, w: @line.w, x: @line.x, y: @line.y, z: @line.z } }
    assert_redirected_to line_url(@line)
  end

  test "should destroy line" do
    assert_difference('Line.count', -1) do
      delete line_url(@line)
    end

    assert_redirected_to lines_url
  end
end
