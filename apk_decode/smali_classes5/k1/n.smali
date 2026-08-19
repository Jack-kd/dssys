.class public final synthetic Lk1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/i;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lk1/i;


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/i;JLjava/lang/String;Lk1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/n;->b:Lcom/varbto/internal/i;

    iput-wide p2, p0, Lk1/n;->c:J

    iput-object p4, p0, Lk1/n;->d:Ljava/lang/String;

    iput-object p5, p0, Lk1/n;->e:Lk1/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/n;->b:Lcom/varbto/internal/i;

    iget-wide v1, p0, Lk1/n;->c:J

    iget-object v3, p0, Lk1/n;->d:Ljava/lang/String;

    iget-object v4, p0, Lk1/n;->e:Lk1/i;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/varbto/internal/i;->l(JLjava/lang/String;Lk1/i;)V

    return-void
.end method
