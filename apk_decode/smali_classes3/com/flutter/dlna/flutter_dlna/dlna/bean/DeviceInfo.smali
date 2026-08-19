.class public final Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final device:Lorg/fourthline/cling/model/meta/Device;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->device:Lorg/fourthline/cling/model/meta/Device;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->name:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->device:Lorg/fourthline/cling/model/meta/Device;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
