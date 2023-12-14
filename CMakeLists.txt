cmake_minimum_required(VERSION 3.10)# 必备

# set the project name 必备
project(Tutorial)

# enable modern C++ 必备
set(CMAKE_CXX_STANDARD 17)

# add the executable
add_executable(main.exe main.cpp)



add_subdirectory(my_dir)
target_include_directories(Prob PUBLIC my_dir)
target_include_directories(Equa PUBLIC my_dir)
target_include_directories(Imesh PUBLIC my_dir)
target_include_directories(VAR PUBLIC my_dir)
target_include_directories(TIME PUBLIC my_dir)
target_link_libraries(main.exe Equa Prob Imesh VAR TIME)
enable_testing()# 必备

add_test (main_test main.exe)#必备
find_package(GTest REQUIRED)#必备

add_executable(Test.exe test.cpp)
target_link_libraries(Test.exe GTest::GTest GTest::Main Prob Equa Imesh VAR TIME)#每次只需要改Prob Equa

gtest_discover_tests(Test.exe)

find_package(Threads)
target_link_libraries(main.exe Threads::Threads)