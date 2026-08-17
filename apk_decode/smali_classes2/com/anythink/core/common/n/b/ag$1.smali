.class final Lcom/anythink/core/common/n/b/ag$1;
.super Lcom/anythink/core/common/n/b/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/b/ag;->a(Lcom/anythink/core/common/n/b/x;JLcom/anythink/core/common/n/c/e;)Lcom/anythink/core/common/n/b/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b/x;

.field final synthetic b:J

.field final synthetic c:Lcom/anythink/core/common/n/c/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/b/x;JLcom/anythink/core/common/n/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/n/b/ag$1;->a:Lcom/anythink/core/common/n/b/x;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/anythink/core/common/n/b/ag$1;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/anythink/core/common/n/b/ag$1;->c:Lcom/anythink/core/common/n/c/e;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/anythink/core/common/n/b/ag;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/n/b/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/ag$1;->a:Lcom/anythink/core/common/n/b/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/core/common/n/b/ag$1;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lcom/anythink/core/common/n/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/n/b/ag$1;->c:Lcom/anythink/core/common/n/c/e;

    .line 2
    .line 3
    return-object v0
.end method
