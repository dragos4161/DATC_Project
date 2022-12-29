// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      dangers:
          json['dangers'] == null ? const DangerState() : DangerState.fromJson(json['dangers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'dangers': instance.dangers,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
    };

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
    };

_$Danger$ _$$Danger$FromJson(Map<String, dynamic> json) => _$Danger$(
      type: json['type'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$Danger$ToJson(_$Danger$ instance) => <String, dynamic>{
      'type': instance.type,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
    };

_$DangerState$ _$$DangerState$FromJson(Map<String, dynamic> json) => _$DangerState$(
      dangers: (json['dangers'] as List<dynamic>?)?.map((e) => Danger.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Danger>[],
      allDangers:
          (json['allDangers'] as List<dynamic>?)?.map((e) => Danger.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Danger>[],
    );

Map<String, dynamic> _$$DangerState$ToJson(_$DangerState$ instance) => <String, dynamic>{
      'dangers': instance.dangers,
      'allDangers': instance.allDangers,
    };
