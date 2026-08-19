.class public final synthetic Lk1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/i;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/i;ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/l;->b:Lcom/varbto/internal/i;

    iput p2, p0, Lk1/l;->c:I

    iput-object p3, p0, Lk1/l;->d:Ljava/lang/String;

    iput-wide p4, p0, Lk1/l;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/l;->b:Lcom/varbto/internal/i;

    iget v1, p0, Lk1/l;->c:I

    iget-object v2, p0, Lk1/l;->d:Ljava/lang/String;

    iget-wide v3, p0, Lk1/l;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/varbto/internal/i;->j(ILjava/lang/String;J)V

    return-void
.end method
