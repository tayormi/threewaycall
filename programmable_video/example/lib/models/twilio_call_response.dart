// To parse this JSON data, do
//
//     final twilioCallResponse = twilioCallResponseFromMap(jsonString);

import 'dart:convert';

class TwilioCallResponse {
    TwilioCallResponse({
        this.accountSid,
        this.annotation,
        this.answeredBy,
        this.apiVersion,
        this.callerName,
        this.dateCreated,
        this.dateUpdated,
        this.direction,
        this.duration,
        this.endTime,
        this.forwardedFrom,
        this.from,
        this.fromFormatted,
        this.groupSid,
        this.parentCallSid,
        this.phoneNumberSid,
        this.price,
        this.priceUnit,
        this.sid,
        this.startTime,
        this.status,
        this.subresourceUris,
        this.to,
        this.toFormatted,
        this.trunkSid,
        this.uri,
        this.queueTime,
    });

    String accountSid;
    dynamic annotation;
    dynamic answeredBy;
    DateTime apiVersion;
    dynamic callerName;
    String dateCreated;
    String dateUpdated;
    String direction;
    String duration;
    String endTime;
    String forwardedFrom;
    String from;
    String fromFormatted;
    dynamic groupSid;
    dynamic parentCallSid;
    String phoneNumberSid;
    String price;
    String priceUnit;
    String sid;
    String startTime;
    String status;
    SubresourceUris subresourceUris;
    String to;
    String toFormatted;
    dynamic trunkSid;
    String uri;
    String queueTime;

    factory TwilioCallResponse.fromJson(String str) => TwilioCallResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TwilioCallResponse.fromMap(Map<String, dynamic> json) => TwilioCallResponse(
        accountSid: json["account_sid"] == null ? null : json["account_sid"],
        annotation: json["annotation"],
        answeredBy: json["answered_by"],
        apiVersion: json["api_version"] == null ? null : DateTime.parse(json["api_version"]),
        callerName: json["caller_name"],
        dateCreated: json["date_created"] == null ? null : json["date_created"],
        dateUpdated: json["date_updated"] == null ? null : json["date_updated"],
        direction: json["direction"] == null ? null : json["direction"],
        duration: json["duration"] == null ? null : json["duration"],
        endTime: json["end_time"] == null ? null : json["end_time"],
        forwardedFrom: json["forwarded_from"] == null ? null : json["forwarded_from"],
        from: json["from"] == null ? null : json["from"],
        fromFormatted: json["from_formatted"] == null ? null : json["from_formatted"],
        groupSid: json["group_sid"],
        parentCallSid: json["parent_call_sid"],
        phoneNumberSid: json["phone_number_sid"] == null ? null : json["phone_number_sid"],
        price: json["price"] == null ? null : json["price"],
        priceUnit: json["price_unit"] == null ? null : json["price_unit"],
        sid: json["sid"] == null ? null : json["sid"],
        startTime: json["start_time"] == null ? null : json["start_time"],
        status: json["status"] == null ? null : json["status"],
        subresourceUris: json["subresource_uris"] == null ? null : SubresourceUris.fromMap(json["subresource_uris"]),
        to: json["to"] == null ? null : json["to"],
        toFormatted: json["to_formatted"] == null ? null : json["to_formatted"],
        trunkSid: json["trunk_sid"],
        uri: json["uri"] == null ? null : json["uri"],
        queueTime: json["queue_time"] == null ? null : json["queue_time"],
    );

    Map<String, dynamic> toMap() => {
        "account_sid": accountSid == null ? null : accountSid,
        "annotation": annotation,
        "answered_by": answeredBy,
        "api_version": apiVersion == null ? null : "${apiVersion.year.toString().padLeft(4, '0')}-${apiVersion.month.toString().padLeft(2, '0')}-${apiVersion.day.toString().padLeft(2, '0')}",
        "caller_name": callerName,
        "date_created": dateCreated == null ? null : dateCreated,
        "date_updated": dateUpdated == null ? null : dateUpdated,
        "direction": direction == null ? null : direction,
        "duration": duration == null ? null : duration,
        "end_time": endTime == null ? null : endTime,
        "forwarded_from": forwardedFrom == null ? null : forwardedFrom,
        "from": from == null ? null : from,
        "from_formatted": fromFormatted == null ? null : fromFormatted,
        "group_sid": groupSid,
        "parent_call_sid": parentCallSid,
        "phone_number_sid": phoneNumberSid == null ? null : phoneNumberSid,
        "price": price == null ? null : price,
        "price_unit": priceUnit == null ? null : priceUnit,
        "sid": sid == null ? null : sid,
        "start_time": startTime == null ? null : startTime,
        "status": status == null ? null : status,
        "subresource_uris": subresourceUris == null ? null : subresourceUris.toMap(),
        "to": to == null ? null : to,
        "to_formatted": toFormatted == null ? null : toFormatted,
        "trunk_sid": trunkSid,
        "uri": uri == null ? null : uri,
        "queue_time": queueTime == null ? null : queueTime,
    };
}

class SubresourceUris {
    SubresourceUris({
        this.notifications,
        this.recordings,
        this.feedback,
        this.feedbackSummaries,
        this.payments,
        this.events,
    });

    String notifications;
    String recordings;
    String feedback;
    String feedbackSummaries;
    String payments;
    String events;

    factory SubresourceUris.fromJson(String str) => SubresourceUris.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SubresourceUris.fromMap(Map<String, dynamic> json) => SubresourceUris(
        notifications: json["notifications"] == null ? null : json["notifications"],
        recordings: json["recordings"] == null ? null : json["recordings"],
        feedback: json["feedback"] == null ? null : json["feedback"],
        feedbackSummaries: json["feedback_summaries"] == null ? null : json["feedback_summaries"],
        payments: json["payments"] == null ? null : json["payments"],
        events: json["events"] == null ? null : json["events"],
    );

    Map<String, dynamic> toMap() => {
        "notifications": notifications == null ? null : notifications,
        "recordings": recordings == null ? null : recordings,
        "feedback": feedback == null ? null : feedback,
        "feedback_summaries": feedbackSummaries == null ? null : feedbackSummaries,
        "payments": payments == null ? null : payments,
        "events": events == null ? null : events,
    };
}
