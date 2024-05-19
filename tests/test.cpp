#include <ConceptualExample.cpp>
#include <gtest/gtest.h>

TEST(ConcreteProductA1, example){
	ConcreteProductA1 test;
	ASSERT_EQ(test.usefulFunctionA(), "The result of the product A1.");	
}
TEST(ConcreteProductA2, example){
	ConcreteProductA2 test;
	ASSERT_EQ(test.usefulFunctionA(), "The result of the product A2.");	
}
TEST(ConcreteProductB1, example){
	ConcreteProductB1 test;
	ASSERT_EQ(test.usefulFunctionB(), "The result of the product B1.");	
}
