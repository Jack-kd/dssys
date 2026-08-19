.class Lcom/beizi/fusion/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/l5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/a;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/a$c;->a:Lcom/beizi/fusion/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/db/AdvertCacheDBModel;)Ljava/lang/Long;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/ma;->getPrimaryID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/fusion/asnp/adn/ad/model/impl/db/AdvertCacheDBModel;

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/a$c;->a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/db/AdvertCacheDBModel;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
