.class public LL1/e$a;
.super LL1/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final p:I

.field public q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LL1/h$a;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, LL1/e$a;->q:Ljava/util/HashMap;

    .line 6
    .line 7
    iput p2, p0, LL1/e$a;->p:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)LL1/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/e$a;->q:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, LL1/e$a;

    .line 12
    .line 13
    return-object p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, LL1/e$a;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public i(Ljava/lang/Object;LL1/e$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, LL1/e$a;->q:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LL1/e$a;->q:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, LL1/e$a;->q:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
