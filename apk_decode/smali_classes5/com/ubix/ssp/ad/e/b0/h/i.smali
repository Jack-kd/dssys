.class Lcom/ubix/ssp/ad/e/b0/h/i;
.super Ljava/net/ProxySelector;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/net/ProxySelector;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {v0}, [Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/b0/h/i;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/ProxySelector;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->b:Ljava/net/ProxySelector;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/b0/h/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->c:Ljava/lang/String;

    iput p3, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/i;

    invoke-direct {v1, v0, p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/i;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->d:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/ubix/ssp/ad/e/b0/h/i;->a:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/i;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
