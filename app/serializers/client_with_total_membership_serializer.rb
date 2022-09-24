class ClientWithTotalMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_membership_amount

	def total_membership_amount
		memberships = self.object.memberships
		return 0 if memberships.empty?

		memberships.inject(0) { |sum, n| sum + n.charge }
	end
end
