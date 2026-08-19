.class public Lcom/meishu/sdk/core/utils/VideoLoadManager$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/VideoLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

.field public b:Ljava/io/File;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/bquery/h<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->IDLE:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method
