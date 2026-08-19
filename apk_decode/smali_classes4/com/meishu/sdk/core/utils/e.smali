.class public Lcom/meishu/sdk/core/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 2
    .line 3
    check-cast p2, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    cmp-long p1, v0, p1

    .line 28
    .line 29
    if-lez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, -0x1

    .line 34
    return p1
.end method
