.class public final synthetic LR/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/lsx/j;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/lsx/j;ZJILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR/a;->b:Lcom/byazt/lsx/j;

    iput-boolean p2, p0, LR/a;->c:Z

    iput-wide p3, p0, LR/a;->d:J

    iput p5, p0, LR/a;->e:I

    iput-object p6, p0, LR/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LR/a;->b:Lcom/byazt/lsx/j;

    iget-boolean v1, p0, LR/a;->c:Z

    iget-wide v2, p0, LR/a;->d:J

    iget v4, p0, LR/a;->e:I

    iget-object v5, p0, LR/a;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/byazt/lsx/a;->b(Lcom/byazt/lsx/j;ZJILjava/lang/String;)V

    return-void
.end method
