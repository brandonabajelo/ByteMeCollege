class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @cid = params[:cid]

    @reviews = Review.joins('INNER JOIN "courses" ON "courses"."id" = "reviews"."course_id" INNER JOIN "users" ON "users"."id" = "reviews"."user_id"')
                    .select('reviews.*, courses.course_name, users.email')
                    .where('reviews.thumb_down <= 5 AND reviews.course_id = ?' , @cid)
                    .order('thumb_up, updated_at')
    
    params[:cid] = @cid
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @reviews = Review.joins('INNER JOIN "courses" ON "courses"."id" = "reviews"."course_id" INNER JOIN "users" ON "users"."id" = "reviews"."user_id"')
                    .select('reviews.*, courses.course_name, users.email')
                    .order('updated_at')
  end

  # GET /reviews/new
  def new
    @review = Review.new
    
    @cid = params[:cid]
    params[:cid] = @cid
    
    @rid = params[:rid]
    params[:rid] = @rid

    @departments = Department.all.order('d_name')
    @courses = Course.all.order('course_name')
  end

  # GET /reviews/1/edit
  def edit
    @courses = Course.all.order('course_name')
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @cid = params[:cid]
    @rid = params[:rid]

    @review = Review.new(review_params)


    respond_to do |format|
      if @review.save
        #if !params[:cid].nil?
          format.html { redirect_to @review, notice: 'Review was successfully created.' }
     #   elseif !params[:rid].nil?
      #    format.html { redirect_to @review, rid: @rid, notice: 'Review was successfully created.' }
       # end
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review

      @replies = Review.joins('INNER JOIN "users" ON "users"."id" = "reviews"."user_id"')
                    .select('reviews.*, users.email')
                    .where('review_id = ?', params[:id])

      @review = Review.joins('INNER JOIN "users" ON "users"."id" = "reviews"."user_id"')
                    .select('reviews.*, users.email')
                    .find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      @currentUserId = current_user.id
      params.require(:review).permit(:course_id, :review_id, :user_id, :review)
    end
end
