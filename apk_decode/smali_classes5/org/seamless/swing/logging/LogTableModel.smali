.class public Lorg/seamless/swing/logging/LogTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "SourceFile"


# instance fields
.field protected maxAgeSeconds:I

.field protected messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 13
    .line 14
    iput p1, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public clearMessages()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableModel;->fireTableDataChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p1, Lorg/seamless/swing/logging/LogMessage;

    .line 2
    .line 3
    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, "Message"

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string p1, "Source"

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    const-string p1, "Thread"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_2
    const-string p1, "Time"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_3
    const-string p1, ""

    .line 25
    .line 26
    return-object p1
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    .line 9
    .line 10
    const v1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/Date;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lorg/seamless/swing/logging/LogMessage;

    .line 41
    .line 42
    iget v4, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    .line 43
    .line 44
    mul-int/lit16 v4, v4, 0x3e8

    .line 45
    .line 46
    int-to-long v4, v4

    .line 47
    invoke-virtual {v3}, Lorg/seamless/swing/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    add-long/2addr v6, v4

    .line 56
    cmp-long v3, v6, v1

    .line 57
    .line 58
    if-gez v3, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lorg/seamless/swing/logging/LogTableModel;->messages:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableModel;->fireTableDataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p1
.end method

.method public setMaxAgeSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/seamless/swing/logging/LogTableModel;->maxAgeSeconds:I

    .line 2
    .line 3
    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/seamless/swing/logging/LogTableModel;->paused:Z

    .line 2
    .line 3
    return-void
.end method
