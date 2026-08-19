.class public Lcom/czhj/volley/toolbox/StringUtil;
.super Ljava/lang/Object;


# static fields
.field public static clsName:Ljava/lang/String; = null

.field public static cn:Ljava/lang/String; = "q1vljpre1fq"

.field public static dc:Ljava/lang/String; = "gf1vljpre1fq"

.field public static rtb:Ljava/lang/String; = "uwefdooedfn1vljpre1fq"

.field public static s:Ljava/lang/String; = "vljpre"

.field public static sad:Ljava/lang/String; = "vljpreDg"

.field public static service:Ljava/lang/String; = "dgvhuylfh1vljpre1fq"

.field public static tb_service:Ljava/lang/String; = "wp1vljpre1fq"

.field public static tp:Ljava/lang/String; = "wudfnws1vljpre1fq"

.field public static track:Ljava/lang/String; = "wudfn1vljpre1fq"

.field public static urlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    const-string v1, "frp1f}km"

    sput-object v1, Lcom/czhj/volley/toolbox/StringUtil;->clsName:Ljava/lang/String;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->service:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adservice.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->dc:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dc.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->track:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "track.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->tp:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tracktp.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->cn:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->rtb:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rtbcallback.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->tb_service:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tm.sigmob.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/czhj/volley/toolbox/StringUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/czhj/volley/toolbox/StringUtil;->clsName:Ljava/lang/String;

    invoke-static {v1}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->urlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static scheme()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/volley/toolbox/StringUtil;->sad:Ljava/lang/String;

    invoke-static {v0}, Lcom/czhj/volley/toolbox/StringUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
