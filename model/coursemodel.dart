class Courses {
    String coursefee;
    String coursename;
    String duration;
    String instructorname;
    String studentid;

    Courses({this.coursefee, this.coursename, this.duration, this.instructorname, this.studentid});

    factory Courses.fromJson(Map<String, dynamic> json) {
        return Courses(
            coursefee: json['coursefee'],
            coursename: json['coursename'],
            duration: json['duration'],
            instructorname: json['instructorname'],
            studentid: json['studentid'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['coursefee'] = this.coursefee;
        data['coursename'] = this.coursename;
        data['duration'] = this.duration;
        data['instructorname'] = this.instructorname;
        data['studentid'] = this.studentid;
        return data;
    }
}