.class public Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService$a;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService;->createConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService;


# direct methods
.method public constructor <init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService$a;->a:Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 1
    new-instance v0, Lv0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lv0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
