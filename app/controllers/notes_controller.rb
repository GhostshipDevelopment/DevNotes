class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    if params[:project]
      @notes = current_user.notes.where(project_name: params[:project])
    else
      @notes = current_user.notes.all
    end
    respond_with(@notes)
  end

  def show
    respond_with(@note)
  end

  def new
    @note = current_user.notes.new
    respond_with(@note)
  end

  def edit
  end

  def create
    @note = current_user.notes.new(note_params)
    @note.save
    respond_with(@note)
  end

  def update
    @note.update(note_params)
    respond_with(@note)
  end

  def destroy
    @note.destroy
    respond_with(@note)
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:text, :user_id, :project_name)
    end
end
