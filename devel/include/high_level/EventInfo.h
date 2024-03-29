// Generated by gencpp from file high_level/EventInfo.msg
// DO NOT EDIT!


#ifndef HIGH_LEVEL_MESSAGE_EVENTINFO_H
#define HIGH_LEVEL_MESSAGE_EVENTINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace high_level
{
template <class ContainerAllocator>
struct EventInfo_
{
  typedef EventInfo_<ContainerAllocator> Type;

  EventInfo_()
    : Name()  {
    }
  EventInfo_(const ContainerAllocator& _alloc)
    : Name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Name_type;
  _Name_type Name;





  typedef boost::shared_ptr< ::high_level::EventInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::high_level::EventInfo_<ContainerAllocator> const> ConstPtr;

}; // struct EventInfo_

typedef ::high_level::EventInfo_<std::allocator<void> > EventInfo;

typedef boost::shared_ptr< ::high_level::EventInfo > EventInfoPtr;
typedef boost::shared_ptr< ::high_level::EventInfo const> EventInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::high_level::EventInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::high_level::EventInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace high_level

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'high_level': ['/home/kdabek/ROSWorkspace/src/high_level/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::high_level::EventInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::high_level::EventInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::high_level::EventInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::high_level::EventInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::high_level::EventInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::high_level::EventInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::high_level::EventInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cdf8d6bab384a2e7902ca6add60245eb";
  }

  static const char* value(const ::high_level::EventInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcdf8d6bab384a2e7ULL;
  static const uint64_t static_value2 = 0x902ca6add60245ebULL;
};

template<class ContainerAllocator>
struct DataType< ::high_level::EventInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "high_level/EventInfo";
  }

  static const char* value(const ::high_level::EventInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::high_level::EventInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string Name\n\
";
  }

  static const char* value(const ::high_level::EventInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::high_level::EventInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::high_level::EventInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::high_level::EventInfo_<ContainerAllocator>& v)
  {
    s << indent << "Name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HIGH_LEVEL_MESSAGE_EVENTINFO_H
