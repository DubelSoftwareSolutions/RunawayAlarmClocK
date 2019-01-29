// Generated by gencpp from file low_level/Motor_msg.msg
// DO NOT EDIT!


#ifndef LOW_LEVEL_MESSAGE_MOTOR_MSG_H
#define LOW_LEVEL_MESSAGE_MOTOR_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace low_level
{
template <class ContainerAllocator>
struct Motor_msg_
{
  typedef Motor_msg_<ContainerAllocator> Type;

  Motor_msg_()
    : Command()
    , Velocity(0.0)  {
    }
  Motor_msg_(const ContainerAllocator& _alloc)
    : Command(_alloc)
    , Velocity(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Command_type;
  _Command_type Command;

   typedef double _Velocity_type;
  _Velocity_type Velocity;





  typedef boost::shared_ptr< ::low_level::Motor_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::low_level::Motor_msg_<ContainerAllocator> const> ConstPtr;

}; // struct Motor_msg_

typedef ::low_level::Motor_msg_<std::allocator<void> > Motor_msg;

typedef boost::shared_ptr< ::low_level::Motor_msg > Motor_msgPtr;
typedef boost::shared_ptr< ::low_level::Motor_msg const> Motor_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::low_level::Motor_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::low_level::Motor_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace low_level

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'low_level': ['/home/kdabek/ROSWorkspace/src/low_level/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::low_level::Motor_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::low_level::Motor_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::low_level::Motor_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::low_level::Motor_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::low_level::Motor_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::low_level::Motor_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::low_level::Motor_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7c014d1091a7b7744802d2d0fda80f11";
  }

  static const char* value(const ::low_level::Motor_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7c014d1091a7b774ULL;
  static const uint64_t static_value2 = 0x4802d2d0fda80f11ULL;
};

template<class ContainerAllocator>
struct DataType< ::low_level::Motor_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "low_level/Motor_msg";
  }

  static const char* value(const ::low_level::Motor_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::low_level::Motor_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string Command\n\
float64 Velocity\n\
";
  }

  static const char* value(const ::low_level::Motor_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::low_level::Motor_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Command);
      stream.next(m.Velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Motor_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::low_level::Motor_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::low_level::Motor_msg_<ContainerAllocator>& v)
  {
    s << indent << "Command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Command);
    s << indent << "Velocity: ";
    Printer<double>::stream(s, indent + "  ", v.Velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOW_LEVEL_MESSAGE_MOTOR_MSG_H