module CommentsHelper
  NOTICES = {
    :ten_min_edit => 'You can only edit the comment for 10 minutes after posting',
    :edit_own_comments => 'You can only edit your own comments',
    :delete_own_comments => 'You can only delete your own comments',
    :blank_comment => 'Comment must not be blank.',
    :successful_comment => 'Comment was successfully created.',
    :updated_successfully => 'Comment was successfully updated.',
    :destroyed_successfully => 'Comment was successfully destroyed.'
  }

  def redirect_with_notice(page_path, notice)
    flash[:notice] = notice
    redirect_to page_path
  end
end
