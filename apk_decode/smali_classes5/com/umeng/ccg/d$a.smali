.class public Lcom/umeng/ccg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/ccg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/ccg/d;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/umeng/ccg/d;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/ccg/d$a;->a:Lcom/umeng/ccg/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/umeng/ccg/d$a;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/umeng/ccg/d$a;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/ccg/d$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/umeng/ccg/d$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method
