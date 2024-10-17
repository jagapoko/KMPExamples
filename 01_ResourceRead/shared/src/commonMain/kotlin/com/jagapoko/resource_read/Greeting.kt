package com.jagapoko.resource_read

import org.jetbrains.compose.resources.ExperimentalResourceApi
import resource_read.shared.generated.resources.Res

class Greeting {
    private val platform: Platform = getPlatform()

    @OptIn(ExperimentalResourceApi::class)
    suspend fun greet(): String {
        val bytes = Res.readBytes("files/fruits_data.json")
        return bytes.decodeToString()
    }
}