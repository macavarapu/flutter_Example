class Order  {
	String? itemName;
	int? orderId;
	String? status;

	Order ({this.itemName, this.orderId, this.status});

	Order .fromJson(Map<String, dynamic> json) {
		itemName = json['itemName'];
		orderId = json['orderId'];
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['itemName'] = this.itemName;
		data['orderId'] = this.orderId;
		data['status'] = this.status;
		return data;
	}
}

