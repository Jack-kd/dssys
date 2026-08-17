.class public Lcom/meishu/sdk/core/uri/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/meishu/sdk/core/uri/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meishu/sdk/core/uri/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/uri/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/uri/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/uri/c;->c:Lcom/meishu/sdk/core/uri/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/meishu/sdk/core/uri/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/core/uri/c;->a:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/meishu/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string v0, "com.meishu.sdk.core.uri.LiveProcessor"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/uri/c;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v1, Lcom/meishu/sdk/core/uri/a;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/meishu/sdk/core/uri/a;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdSlot;)V
    .locals 5

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/core/uri/c;->a:Ljava/lang/String;

    const-string p2, "uri scheme error"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/meishu/sdk/core/uri/b;

    .line 7
    invoke-interface {v4, p1, v0, p3}, Lcom/meishu/sdk/core/uri/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/meishu/sdk/core/ad/AdSlot;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/core/uri/c;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uri cannot process: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/uri/b;

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
