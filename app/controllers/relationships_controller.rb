class RelationshipsController < ApplicationController
	def create
		relationship = Relationship.where(liker_id: current_user.id, likee_id: params[:likee_id])
		relationship.destroy_all
		@relationship = Relationship.new(
			liker_id: current_user.id,
			likee_id: params[:likee_id],
			relationType: params[:relationType])
		@relationship.save
		redirect_to profil_path
	end

	def destroy
	end

  # def user_params
  #   params.require(:relationship).permit(:liker, :likee, :relationType)
  # end
end
