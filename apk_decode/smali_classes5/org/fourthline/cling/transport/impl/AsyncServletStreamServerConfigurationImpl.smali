.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field protected asyncTimeoutSeconds:I

.field protected listenPort:I

.field protected servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    const/16 v0, 0x3c

    .line 3
    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 6
    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 7
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 8
    iput p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 11
    iput p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 12
    iput p3, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    return-void
.end method


# virtual methods
.method public getAsyncTimeoutSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getListenPort()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 2
    .line 3
    return v0
.end method

.method public getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAsyncTimeoutSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->asyncTimeoutSeconds:I

    .line 2
    .line 3
    return-void
.end method

.method public setListenPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->listenPort:I

    .line 2
    .line 3
    return-void
.end method

.method public setServletContainerAdapter(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->servletContainerAdapter:Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    .line 2
    .line 3
    return-void
.end method
