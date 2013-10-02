.class public Lmiui/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_DIRECTORY_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/32 v3, 0x100000

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 22
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    .line 23
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    :goto_0
    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY_WITH_ENDING_SLASH:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    .line 119
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9200"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9500"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "maguro"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ville"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "LT26i"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ventana"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "stuttgart"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void

    .line 23
    :cond_0
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getFreeMemory()J
    .locals 11

    .prologue
    .line 158
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "MemFree:"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "Buffers:"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "Cached:"

    aput-object v10, v7, v9

    .line 159
    .local v7, memInfoFields:[Ljava/lang/String;
    array-length v9, v7

    new-array v8, v9, [J

    .line 160
    .local v8, memInfoSizes:[J
    const-string v9, "/proc/meminfo"

    invoke-static {v9, v7, v8}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 162
    const-wide/16 v1, 0x0

    .line 163
    .local v1, free:J
    move-object v0, v8

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v5, v0, v3

    .line 164
    .local v5, mem:J
    add-long/2addr v1, v5

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v5           #mem:J
    :cond_0
    const-wide/16 v9, 0x400

    mul-long/2addr v9, v1

    return-wide v9
.end method

.method public static getInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIInternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMIUIStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getOomMinFree()J
    .locals 5

    .prologue
    .line 175
    :try_start_0
    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 177
    .local v2, value:I
    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 181
    .end local v2           #value:I
    :goto_0
    return-wide v3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 6

    .prologue
    .line 129
    sget-wide v2, Lmiui/os/Environment;->sTotalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 132
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MemTotal:"

    aput-object v3, v0, v2

    .line 133
    .local v0, memInfoFields:[Ljava/lang/String;
    array-length v2, v0

    new-array v1, v2, [J

    .line 134
    .local v1, memInfoSizes:[J
    const-string v2, "/proc/meminfo"

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 135
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    sput-wide v2, Lmiui/os/Environment;->sTotalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #memInfoSizes:[J
    :cond_0
    :goto_0
    sget-wide v2, Lmiui/os/Environment;->sTotalMemory:J

    return-wide v2

    .line 136
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getTotalPhysicalMemory()J
    .locals 4

    .prologue
    .line 143
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    .line 151
    :cond_0
    :goto_0
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    return-wide v0

    .line 148
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x100

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    goto :goto_0
.end method

.method public static init(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "systemDir"
    .parameter "dataDir"

    .prologue
    const/4 v2, -0x1

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "customized_icons"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x3ff

    invoke-static {v0, v1, v2, v2}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 186
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "sdcard"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 187
    return-void
.end method

.method public static isExternalPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 91
    if-eqz p0, :cond_1

    const-string v0, "/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/mnt/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStoragePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lmiui/os/Environment;->EXTERNAL_STORAGE_DIRECTORY_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageStateChanged(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 82
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 83
    .local v0, storage:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/Environment;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternalStorageLow(Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "resolver"

    .prologue
    const/4 v1, 0x1

    .line 39
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v2, Lmiui/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {p0}, Lmiui/provider/ExtraSettings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 44
    .end local v0           #stats:Landroid/os/StatFs;
    :goto_0
    return v1

    .line 40
    .restart local v0       #stats:Landroid/os/StatFs;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    .end local v0           #stats:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isStorageUsb(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 98
    :cond_1
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 99
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 100
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_0

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 102
    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    const v5, 0x60c01f8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, storageUsb:Ljava/lang/String;
    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const/4 v4, 0x1

    goto :goto_0

    .line 101
    .end local v2           #storageUsb:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
