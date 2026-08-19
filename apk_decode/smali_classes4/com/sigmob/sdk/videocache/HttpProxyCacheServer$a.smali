.class final Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;->a:Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;->a:Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    iget-object v1, p0, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer$a;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->a(Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    return-void
.end method
