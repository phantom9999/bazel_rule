#include <gflags/gflags.h>
#include <glog/logging.h>
#include <glog/stl_logging.h>

int main(int argc, char* argv[]) {
  google::InitGoogleLogging(argv[0]);
  google::ParseCommandLineFlags(&argc, &argv, true);

  LOG(INFO) << "Hello, world!";

  std::vector<int> x;
  x.push_back(1);
  x.push_back(2);
  x.push_back(3);
  LOG(INFO) << "ABC, it's easy as " << x;

  return 0;
}
