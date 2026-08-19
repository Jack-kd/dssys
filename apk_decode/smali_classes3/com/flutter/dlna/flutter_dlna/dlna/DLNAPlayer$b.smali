.class public Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;
.super Lorg/fourthline/cling/support/avtransport/callback/SetAVTransportURI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->h(Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/fourthline/cling/android/AndroidUpnpService;

.field public final synthetic c:Lorg/fourthline/cling/model/meta/Service;

.field public final synthetic d:Lu0/a;

.field public final synthetic e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;


# direct methods
.method public constructor <init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->b:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 4
    .line 5
    iput-object p6, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 6
    .line 7
    iput-object p7, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->d:Lu0/a;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/avtransport/callback/SetAVTransportURI;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;

    .line 9
    .line 10
    invoke-direct {v0, p0, p2, p3}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;-><init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->d:Lu0/a;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-interface {p2, p1, v0, p3}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/avtransport/callback/SetAVTransportURI;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->b:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->d:Lu0/a;

    .line 18
    .line 19
    new-instance v3, Lt0/g;

    .line 20
    .line 21
    invoke-direct {v3, p0, v0, v1, v2}, Lt0/g;-><init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x12c

    .line 25
    .line 26
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
