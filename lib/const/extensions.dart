

extension StringExtension on String{
  //converting string to time that getting from yelp api
  toTime()=>"${substring(0,2)}:${substring(2)}";
}