// create all collections
db.createCollection("category");
db.createCollection("clothing_item");
db.createCollection("customer");
db.createCollection("cashier");
db.createCollection("admin");
db.createCollection("customer_order");
db.createCollection("cashier_payroll");
db.createCollection("payment_method");
db.createCollection("delivery_method");
db.createCollection("user");

// i decided to pick a few tables/collections to work with

// insert user data
db.user.insertOne({
	user_id: "cust_001",
	user_name: "Ellahhh",
	user_role: "Customer",
    user_email: "oghenekaro57@gmail.com",
	created_at: Date(),
});

db.user.insertOne({
	user_id: "cust_002",
	user_name: "Daniel",
	user_role: "Admin",
	user_email: "daniel@altschoolafrica.com",
	created_at: Date(),
});


db.user.insertOne({
	user_id: "cust_003",
	user_name: "Rasheed",
	user_role: "Cashier",
	user_email: "rasheed@gmail.com",
	created_at: Date(),
});

db.user.insertOne({
	user_id: "cust_004",
	user_name: "Stephen",
	user_role: "Admin",
	user_email: "stephen@gmail.com",
	created_at: Date(),
});


db.admin.insertOne({
	admin_id: "admin_001",
	admin_role: "Super Admin",
	is_active: true,
	user_id: "cust_002",
	created_at: Date(),
});


db.admin.insertOne({
	admin_id: "admin_002",
	admin_role: "Content Admin",
	is_active: true,
	user_id: "cust_004",
	created_at: Date(),
});

// update user
db.user.update(
	{ user_id: "cust_003" },
	{ $set: { user_email: "maito4me@gmail.com" } },
);

// delete admin
db.admin.deleteOne({ admin_id: "admin_002" });

// query data
db.user.find({ user_id: "cust_003" });

db.admin.findOne({ admin_id: "admin_001" });

// get all admin based on user id
db.admin.aggregate([
	{
		$lookup: {
			from: "user",
			localField: "user_id",
			foreignField: "admin_id",
			as: "user",
		},
	},
]);
