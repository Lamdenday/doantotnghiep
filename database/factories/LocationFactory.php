<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Location>
 */
class LocationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'location_name'=>$this->faker->name(),
            'address'=>$this->faker->address(),
            'description'=>$this->faker->text(),
            'image'=>'free-demo.jpg',
            'checkin'=>'https://dulichviet.com.vn/du-lich-nuoc-ngoai/du-lich-he-tour-du-lich-tho-nhi-ky-kham-pha-vuong-trieu-ottoman-tu-sai-gon-2022?idschedule=81905',
        ];
    }
}
