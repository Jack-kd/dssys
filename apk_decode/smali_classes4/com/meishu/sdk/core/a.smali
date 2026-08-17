.class public Lcom/meishu/sdk/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/PlatformFactory;->createAll()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/meishu/sdk/core/a;->a:Ljava/util/Map;

    .line 6
    .line 7
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/meishu/sdk/core/e;

    .line 8
    .line 9
    return-object p0
.end method
