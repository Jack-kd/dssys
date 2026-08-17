.class public Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;
.super Lorg/fourthline/cling/support/avtransport/callback/Stop;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->j(Lu0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/fourthline/cling/android/AndroidUpnpService;

.field public final synthetic c:Lorg/fourthline/cling/model/meta/Service;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lu0/a;

.field public final synthetic f:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;


# direct methods
.method public constructor <init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->f:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->b:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->e:Lu0/a;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lorg/fourthline/cling/support/avtransport/callback/Stop;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->f:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->b:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->a(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->d:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->e:Lu0/a;

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/avtransport/callback/Stop;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->f:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->b:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->c:Lorg/fourthline/cling/model/meta/Service;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->a(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->d:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;->e:Lu0/a;

    .line 17
    .line 18
    invoke-static/range {v0 .. v5}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
