.class Lcom/baidu/mobads/sdk/internal/an$a;
.super Lcom/baidu/mobads/sdk/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/mobads/sdk/internal/an;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/an;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an$a;->b:Lcom/baidu/mobads/sdk/internal/an;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an$a;->b:Lcom/baidu/mobads/sdk/internal/an;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/an;->a(Lcom/baidu/mobads/sdk/internal/an;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an$a;->b:Lcom/baidu/mobads/sdk/internal/an;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/an;->b(Lcom/baidu/mobads/sdk/internal/an;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method
