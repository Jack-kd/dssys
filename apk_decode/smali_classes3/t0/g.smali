.class public final synthetic Lt0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;

.field public final synthetic c:Lorg/fourthline/cling/android/AndroidUpnpService;

.field public final synthetic d:Lorg/fourthline/cling/model/meta/Service;

.field public final synthetic e:Lu0/a;


# direct methods
.method public synthetic constructor <init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/g;->b:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;

    iput-object p2, p0, Lt0/g;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    iput-object p3, p0, Lt0/g;->d:Lorg/fourthline/cling/model/meta/Service;

    iput-object p4, p0, Lt0/g;->e:Lu0/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt0/g;->b:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;

    iget-object v1, p0, Lt0/g;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    iget-object v2, p0, Lt0/g;->d:Lorg/fourthline/cling/model/meta/Service;

    iget-object v3, p0, Lt0/g;->e:Lu0/a;

    invoke-static {v0, v1, v2, v3}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;->a(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V

    return-void
.end method
