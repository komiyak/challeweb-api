class ApplicationController < ActionController::API
  # ページングに必要なデータ構造を構築する。
  # この処理は gem `kaminari` に依存しています。
  # @param scope `kaminari` でページング処理を施された ActiveRecord_Relation モデル
  # @param with_last 最終ページを知る必要があれば true (その場合、加えて COUNT(*) クエリが実行されます)
  # noinspection RubyUnnecessaryReturnStatement
  def get_paging_structure(scope, with_last = false)
    current = scope.current_page
    total = if with_last
              scope.total_pages
            else
              nil
            end
    per_page = scope.limit_value

    return { pagination: {
      self: current,
      first: 1,
      last: total,
      prev: (current > 1 ? (current - 1) : nil),
      next: (current == total ? nil : (current + 1)),
      per_page: per_page,
      total_count: with_last ? scope.total_count : nil
    } }
  end
end
