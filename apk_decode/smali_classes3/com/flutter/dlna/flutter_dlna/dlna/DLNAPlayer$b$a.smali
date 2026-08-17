.class public Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;
.super Lorg/fourthline/cling/support/avtransport/callback/Play;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu0/a;

.field public final synthetic c:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;


# direct methods
.method public constructor <init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;->c:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;->b:Lu0/a;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lorg/fourthline/cling/support/avtransport/callback/Play;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;->b:Lu0/a;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/fourthline/cling/support/avtransport/callback/Play;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b$a;->b:Lu0/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lu0/a;->a(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
