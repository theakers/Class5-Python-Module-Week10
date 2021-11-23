CREATE TABLE "public.Company" (
	"DepartmentID" integer NOT NULL,
	"TeamID" integer NOT NULL,
	"TeamName" TEXT NOT NULL,
	"ModifatedDate" integer NOT NULL,
	CONSTRAINT "Company_pk" PRIMARY KEY ("DepartmentID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Team" (
	"TeamID" integer NOT NULL,
	"TeamName" TEXT NOT NULL,
	"NumberOfTeam" integer NOT NULL,
	"MembershipID" integer NOT NULL,
	"OrderNumber" integer NOT NULL,
	CONSTRAINT "Team_pk" PRIMARY KEY ("TeamID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Members" (
	"MembershipID" integer NOT NULL,
	"FullName" TEXT NOT NULL,
	"Gender" TEXT NOT NULL,
	"JobTitle" TEXT NOT NULL,
	"Phone" integer NOT NULL,
	"Adres" TEXT NOT NULL,
	"Birthday" integer NOT NULL,
	CONSTRAINT "Members_pk" PRIMARY KEY ("MembershipID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Order" (
	"OrderNumber" integer NOT NULL,
	"CustomerID" integer NOT NULL,
	"OrderName" TEXT NOT NULL,
	"ShipDate" integer NOT NULL,
	"ProductID" integer NOT NULL,
	CONSTRAINT "Order_pk" PRIMARY KEY ("OrderNumber")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Product" (
	"ProductID" integer NOT NULL,
	"ProductType" TEXT NOT NULL,
	"Quantity" integer NOT NULL,
	CONSTRAINT "Product_pk" PRIMARY KEY ("ProductID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Customer" (
	"CustomerID" integer NOT NULL,
	"FirstName" TEXT NOT NULL,
	"LastName" TEXT NOT NULL,
	"City" TEXT NOT NULL,
	"Street" TEXT NOT NULL,
	"PostCode" integer NOT NULL,
	"HouseNumber" integer NOT NULL,
	"Phone" integer NOT NULL,
	CONSTRAINT "Customer_pk" PRIMARY KEY ("CustomerID")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Company" ADD CONSTRAINT "Company_fk0" FOREIGN KEY ("TeamID") REFERENCES "Team"("TeamID");

ALTER TABLE "Team" ADD CONSTRAINT "Team_fk0" FOREIGN KEY ("MembershipID") REFERENCES "Members"("MembershipID");
ALTER TABLE "Team" ADD CONSTRAINT "Team_fk1" FOREIGN KEY ("OrderNumber") REFERENCES "Order"("OrderNumber");


ALTER TABLE "Order" ADD CONSTRAINT "Order_fk0" FOREIGN KEY ("CustomerID") REFERENCES "Customer"("CustomerID");
ALTER TABLE "Order" ADD CONSTRAINT "Order_fk1" FOREIGN KEY ("ProductID") REFERENCES "Product"("ProductID");









